import {Entity, Column, OneToMany} from 'typeorm';
import {Application} from './Application';

@Entity('ConsiderationTypes', {schema: 'dbo'})
export class ConsiderationTypes {

    @Column('varchar', {
        nullable: false,
        length: 128,
        primary: true,
        name: 'Name',
        })
    public Name: string;

    @Column('varchar', {
        nullable: true,
        length: 256,
        name: 'Description',
        })
    public Description: string | null;

    @Column('bit', {
        nullable: false,
        default: '((1))',
        name: 'Active',
        })
    public Active: boolean;

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
    @OneToMany(type => Application, Application => Application.consideration, { onDelete: 'CASCADE' })
    public applications: Application[];

}
