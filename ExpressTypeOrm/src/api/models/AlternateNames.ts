import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Applicant} from "./Applicant";


@Entity("AlternateNames",{schema:"dbo"})
export class AlternateNames {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>Applicant, Applicant=>Applicant.alternateNamess,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'ApplicantId'})
    applicant:Applicant | null;


    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"FirstName"
        })
    FirstName:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"MiddleName"
        })
    MiddleName:string | null;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        name:"LastName"
        })
    LastName:string;
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"CreateDate"
        })
    CreateDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"CreateUser"
        })
    CreateUser:string;
        
}
