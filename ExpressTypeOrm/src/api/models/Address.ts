import {Index, Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from 'typeorm';
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
    id: number;



    @ManyToOne(type => Application, Application => Application.addresss, {  })
    @JoinColumn({ name: 'ApplicationId'})
    application: Application | null;



    // @ManyToOne(type => Applicant, Applicant => Applicant.addresss, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @ManyToOne(type => Applicant, Applicant => Applicant.addresss, { onDelete: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    applicant: Applicant | null;



    // @ManyToOne(type => AddressTypes, AddressTypes => AddressTypes.addresss, { onDelete: 'SET NULL', onUpdate: 'CASCADE' })
    @ManyToOne(type => AddressTypes, AddressTypes => AddressTypes.addresss, { onDelete: 'SET NULL' })
    @JoinColumn({ name: 'AddressType'})
    addressType: AddressTypes | null;


    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address1'
        })
    Address1: string | null;


    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address2'
        })
    Address2: string | null;


    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Address3'
        })
    Address3: string | null;


    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'City'
        })
    City: string | null;


    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'State'
        })
    State: string | null;


    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'PostalCode'
        })
    PostalCode: string | null;


    @Column('bit', {
        nullable: true,
        default: '((1))',
        name: 'isCurrent'
        })
    isCurrent: boolean | null;


    @Column('datetime2', {
        nullable: false,
        default: '(getdate())',
        name: 'CreateDate'
        })
    CreateDate: Date;


    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'CreateUser'
        })
    CreateUser: string;


    @Column('datetime2', {
        nullable: false,
        name: 'ModifyDate'
        })
    ModifyDate: Date;


    @Column('varchar', {
        nullable: false,
        length: 128,
        default: '(suser_sname())',
        name: 'ModifyUser'
        })
    ModifyUser: string;



    @OneToMany(type => PreviousEmployer, PreviousEmployer => PreviousEmployer.address)
    previousEmployers: PreviousEmployer[];

}
