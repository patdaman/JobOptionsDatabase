import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';

@Entity('AlternateNames', {schema: 'dbo'})
export class AlternateNames {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.alternateNamess, {  nullable: false, onDelete: 'CASCADE', onUpdate: 'CASCADE' })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    @Column('varchar', {
        nullable: false,
        length: 128,
        name: 'FirstName',
        })
    public FirstName: string;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'MiddleName',
        })
    public MiddleName: string | null;

    @Column('varchar', {
        nullable: false,
        length: 128,
        name: 'LastName',
        })
    public LastName: string;

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

}
