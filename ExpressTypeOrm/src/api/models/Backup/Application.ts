import {Entity, Column, OneToMany, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';
import {ConsiderationTypes} from './ConsiderationTypes';
import {StatusTypes} from './StatusTypes';
import {Address} from './Address';
import {DisabledDocument} from './DisabledDocument';
import {Education} from './Education';
import {PreviousEmployer} from './PreviousEmployer';
import {References} from './References';

@Entity('Application', {schema: 'dbo'})
export class Application {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.applications, { nullable: false, onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'ApplicationDate',
        })
    public ApplicationDate: Date;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'Position',
        })
    public Position: string | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => ConsiderationTypes, ConsiderationTypes => ConsiderationTypes.applications, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'Consideration'})
    public consideration: ConsiderationTypes | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => StatusTypes, StatusTypes => StatusTypes.applications, { onDelete: 'SET NULL', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'Status'})
    public status: StatusTypes | null;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'Hired',
        })
    public Hired: boolean;

    @Column('bit', {
        nullable: true,
        default: '((0))',
        name: 'PreviousApplication',
        })
    public PreviousApplication: boolean | null;

    @Column('bit', {
        nullable: true,
        default: '((0))',
        name: 'PreviousEmployment',
        })
    public PreviousEmployment: boolean | null;

    @Column('bit', {
        nullable: true,
        default: '((0))',
        name: 'PreviouslyTerminated',
        })
    public PreviouslyTerminated: boolean | null;

    @Column('bit', {
        nullable: true,
        default: '((1))',
        name: 'CanWork',
        })
    public CanWork: boolean | null;

    @Column('nchar', {
        nullable: true,
        length: 2,
        name: 'DriversLicenseState',
        })
    public DriversLicenseState: string | null;

    @Column('datetime2', {
        nullable: true,
        name: 'AvailableDate',
        })
    public AvailableDate: Date | null;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'OnCall',
        })
    public OnCall: boolean;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'Temporary',
        })
    public Temporary: boolean;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'Weekends',
        })
    public Weekends: boolean;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'Evenings',
        })
    public Evenings: boolean;

    @Column('bit', {
        nullable: false,
        default: '((0))',
        name: 'Nights',
        })
    public Nights: boolean;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Referral',
        })
    public Referral: string | null;

    @Column('varchar', {
        nullable: true,
        length: 512,
        name: 'LeaveReason',
        })
    public LeaveReason: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'LastSupervisor',
        })
    public LastSupervisor: string | null;

    @Column('datetime2', {
        nullable: true,
        name: 'AuthorizationDate',
        })
    public AuthorizationDate: Date | null;

    @Column('varbinary', {
        nullable: true,
        length: 512,
        name: 'Signature',
        })
    public Signature: Buffer | null;

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
        nullable: true,
        default: '(getdate())',
        name: 'ModifyDate',
        })
    public ModifyDate: Date | null;

    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'ModifyUser',
        })
    public ModifyUser: string;

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Address, Address => Address.application)
    public addresss: Address[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => DisabledDocument, DisabledDocument => DisabledDocument.application)
    public disabledDocuments: DisabledDocument[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => Education, Education => Education.application)
    public educations: Education[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => PreviousEmployer, PreviousEmployer => PreviousEmployer.application)
    public previousEmployers: PreviousEmployer[];

    // tslint:disable-next-line:no-shadowed-variable
    @OneToMany(type => References, References => References.application)
    public referencess: References[];

}
