import {Entity, Column, ManyToOne, JoinColumn} from 'typeorm';
import {Application} from './Application';

@Entity('References', {schema: 'dbo'})
export class References {

    @Column('int', {
        generated: true,
        nullable: false,
        primary: true,
        name: 'id',
        })
    public id: number;

    @Column('int', {
        nullable: false,
        name: 'ApplicantId',
        })
    public ApplicantId: number;

    // tslint:disable-next-line:no-shadowed-variable
    @ManyToOne(type => Application, Application => Application.referencess, {  })
    @JoinColumn({ name: 'ApplicationId'})
    public application: Application | null;

    @Column('varchar', {
        nullable: false,
        length: 256,
        name: 'Name',
        })
    public Name: string;

    @Column('varchar', {
        nullable: true,
        length: 512,
        name: 'Address',
        })
    public Address: string | null;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Business',
        })
    public Business: string | null;

    @Column('varchar', {
        nullable: true,
        length: 50,
        name: 'YearsAcquainted',
        })
    public YearsAcquainted: string | null;

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
