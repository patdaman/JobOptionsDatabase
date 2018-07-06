import {Entity, Column, OneToMany, ManyToOne, JoinColumn} from 'typeorm';
import {Application} from './Application';
import {Applicant} from './Applicant';
import {AddressTypes} from './AddressTypes';
import {PreviousEmployer} from './PreviousEmployer';

@Entity('Address', {schema: 'dbo'})
export class Address {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Application, Application => Application.addresss, {  })
    @JoinColumn({ name: 'ApplicationId'})
    public application: Application | null;

    // @ManyToOne(type => Applicant, Applicant => Applicant.addresss, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.addresss, { onDelete: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    // @ManyToOne(type => AddressTypes, AddressTypes => AddressTypes.addresss, { onDelete: 'SET NULL', onUpdate: 'CASCADE' })
    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => AddressTypes, AddressTypes => AddressTypes.addresss, { onDelete: 'SET NULL' })
    @JoinColumn({ name: 'AddressType'})
    public addressType: AddressTypes | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address1',
        })
    public Address1: string | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address2',
        })
    public Address2: string | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address3',
        })
    public Address3: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'City',
        })
    public City: string | null;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'State',
        })
    public State: string | null;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'PostalCode',
        })
    public PostalCode: string | null;

    @Column('bit', {
        nullable: true,
        default: '((1))',
        name: 'isCurrent',
        })
    public isCurrent: boolean | null;

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
    @OneToMany(type => PreviousEmployer, PreviousEmployer => PreviousEmployer.address)
    public previousEmployers: PreviousEmployer[];

}
