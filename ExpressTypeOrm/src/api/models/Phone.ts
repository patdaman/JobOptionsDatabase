import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Applicant} from "./Applicant";
import {PhoneTypes} from "./PhoneTypes";
import {PreviousEmployer} from "./PreviousEmployer";


@Entity("Phone",{schema:"dbo"})
export class Phone {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

   
    @ManyToOne(type=>Applicant, Applicant=>Applicant.phones,{ onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'ApplicantId'})
    applicant:Applicant | null;


    @Column("int",{ 
        nullable:false,
        name:"PhoneOwner"
        })
    PhoneOwner:number;
        

   
    @ManyToOne(type=>PhoneTypes, PhoneTypes=>PhoneTypes.phones,{ onDelete: 'SET NULL',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'PhoneType'})
    phoneType:PhoneTypes | null;


    @Column("varchar",{ 
        nullable:false,
        length:50,
        name:"PhoneNumber"
        })
    PhoneNumber:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Note"
        })
    Note:string | null;
        

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
        

    @Column("datetime2",{ 
        nullable:false,
        default:"(getdate())",
        name:"ModifyDate"
        })
    ModifyDate:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:128,
        default:"(suser_sname())",
        name:"ModifyUser"
        })
    ModifyUser:string;
        

   
    @OneToMany(type=>PreviousEmployer, PreviousEmployer=>PreviousEmployer.supervisorPhone)
    previousEmployers:PreviousEmployer[];
    
}
