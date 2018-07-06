import {Entity, Column, OneToMany, ManyToOne, JoinColumn} from 'typeorm';
import {GenderTypes} from './GenderTypes';
import {EthnicityTypes} from './EthnicityTypes';
import {Address} from './Address';
import {AlternateNames} from './AlternateNames';
import {Application} from './Application';
import {DisabledDocument} from './DisabledDocument';
import {Education} from './Education';
import {Phone} from './Phone';
import {PreviousEmployer} from './PreviousEmployer';
import {ServiceRecord} from './ServiceRecord';

@Entity('Applicant', {schema: 'dbo'})
export class Applicant {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'FirstName',
        })
    public FirstName: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'LastName',
        })
    public LastName: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'MiddleName',
        })
    public MiddleName: string | null;

    @Column('varchar', {
        nullable: true,
        length: 1,
        name: 'MiddleInitial',
        })
    public MiddleInitial: string | null;

    @Column('varchar', {
        nullable: true,
        length: 12,
        name: 'SocialSecurity',
        })
    public SocialSecurity: string | null;

    @Column('datetime2', {
        nullable: true,
        name: 'Birthdate',
        })
    public Birthdate: Date | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => GenderTypes, GenderTypes => GenderTypes.applicants, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'Gender'})
    public gender: GenderTypes | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => EthnicityTypes, EthnicityTypes => EthnicityTypes.applicants, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'Ethnicity'})
    public ethnicity: EthnicityTypes | null;

    @Column('bit', {
        nullable: true,
        default: '((1))',
        name: 'Disabled',
        })
    public Disabled: boolean | null;

    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'CreateDate',
        })
    public CreateDate: Date;

    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'CreateUser',
        })
    public CreateUser: string;

    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'ModifyDate',
        })
    public ModifyDate: Date;

    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'ModifyUser',
        })
    public ModifyUser: string;

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Address, Address => Address.applicant, { onDelete: 'CASCADE' })
    public addresss: Address[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => AlternateNames, AlternateNames => AlternateNames.applicant, { onDelete: 'CASCADE' })
    public alternateNamess: AlternateNames[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Application, Application => Application.applicant, { onDelete: 'CASCADE' })
    public applications: Application[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => DisabledDocument, DisabledDocument => DisabledDocument.applicant, { onDelete: 'CASCADE' })
    public disabledDocuments: DisabledDocument[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Education, Education => Education.applicant)
    public educations: Education[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Phone, Phone => Phone.applicant, { onDelete: 'CASCADE' })
    public phones: Phone[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => PreviousEmployer, PreviousEmployer => PreviousEmployer.applicant, { onDelete: 'CASCADE' })
    public previousEmployers: PreviousEmployer[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => ServiceRecord, ServiceRecord => ServiceRecord.applicant)
    public serviceRecords: ServiceRecord[];

}
