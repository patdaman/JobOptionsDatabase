import {Entity, Column, OneToMany, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';
import {PhoneTypes} from './PhoneTypes';
import {PreviousEmployer} from './PreviousEmployer';

@Entity('Phone', {schema: 'dbo'})
export class Phone {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.phones, { onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    @Column('int', {
        nullable: false,
        name: 'PhoneOwner',
        })
    public PhoneOwner: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => PhoneTypes, PhoneTypes => PhoneTypes.phones, { onDelete: 'SET NULL', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'PhoneType'})
    public phoneType: PhoneTypes | null;

    @Column('varchar', {
        nullable: false,
        length: 50,
        name: 'PhoneNumber',
        })
    public PhoneNumber: string;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Note',
        })
    public Note: string | null;

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
    @OneToMany(type => PreviousEmployer, PreviousEmployer => PreviousEmployer.supervisorPhone)
    public previousEmployers: PreviousEmployer[];

}
