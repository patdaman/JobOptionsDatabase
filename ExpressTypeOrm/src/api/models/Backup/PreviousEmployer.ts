import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';
import {Application} from './Application';
import {Address} from './Address';
import {Phone} from './Phone';

@Entity('PreviousEmployer', {schema: 'dbo'})
export class PreviousEmployer {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.previousEmployers, {  nullable: false, onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Application, Application => Application.previousEmployers, {  })
    @JoinColumn({ name: 'ApplicationId'})
    public application: Application | null;

    @Column('varchar', {
        nullable: false,
        length: 128,
        name: 'CompanyName',
        })
    public CompanyName: string;

    @Column('datetime2', {
        nullable: false,
        name: 'StartDate',
        })
    public StartDate: Date;

    @Column('datetime2', {
        nullable: true,
        name: 'EndDate',
        })
    public EndDate: Date | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Address, Address => Address.previousEmployers, {  })
    @JoinColumn({ name: 'AddressId'})
    public address: Address | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Duties',
        })
    public Duties: string | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'SupervisorName',
        })
    public SupervisorName: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'SupervisorTitle',
        })
    public SupervisorTitle: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'SupervisorDepartment',
        })
    public SupervisorDepartment: string | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Phone, Phone => Phone.previousEmployers, {  })
    @JoinColumn({ name: 'SupervisorPhoneId'})
    public supervisorPhone: Phone | null;

    @Column('bit', {
        nullable: true,
        default: '((1))',
        name: 'SupervisorContact',
        })
    public SupervisorContact: boolean | null;

    @Column('datetime2', {
        nullable: false,
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

}
