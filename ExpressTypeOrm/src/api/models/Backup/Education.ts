import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Applicant} from './Applicant';
import {Application} from './Application';

@Entity('Education', {schema: 'dbo'})
export class Education {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Applicant, Applicant => Applicant.educations, {  nullable: false })
    @JoinColumn({ name: 'ApplicantId'})
    public applicant: Applicant | null;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Application, Application => Application.educations, {  })
    @JoinColumn({ name: 'ApplicationId'})
    public application: Application | null;

    @Column('varchar', {
        nullable: false,
        length: 128,
        name: 'Level',
        })
    public Level: string;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Location',
        })
    public Location: string | null;

    @Column('float', {
        nullable: true,
        precision: 53,
        name: 'YearsAttended',
        })
    public YearsAttended: number | null;

    @Column('bit', {
        nullable: true,
        default: '((0))',
        name: 'Graduate',
        })
    public Graduate: boolean | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Subjects',
        })
    public Subjects: string | null;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'DegreeType',
        })
    public DegreeType: string | null;

    @Column('varchar', {
        nullable: true,
        length: 128,
        name: 'Major',
        })
    public Major: string | null;

    @Column('float', {
        nullable: true,
        precision: 53,
        name: 'GPA',
        })
    public GPA: number | null;

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
        length: 256,
        name: 'Address',
        })
    public Address: string | null;

    @Column('varchar', {
        nullable: true,
        name: 'Other',
        })
    public Other: string | null;

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
