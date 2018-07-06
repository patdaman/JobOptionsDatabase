import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';

@Entity('ServiceRecord', {schema: 'dbo'})
export class ServiceRecord {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.serviceRecords, {  nullable: false })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    @Column('varchar', {
        nullable: false,
        length: 50,
        name: 'Branch',
        })
    public Branch: string;

    @Column('datetime2', {
        nullable: true,
        name: 'DischargeDate',
        })
    public DischargeDate: Date | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'DischargeRank',
        })
    public DischargeRank: string | null;

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

}
