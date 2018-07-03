import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {GenderTypes} from "./GenderTypes";
import {EthnicityTypes} from "./EthnicityTypes";
import {Address} from "./Address";
import {AlternateNames} from "./AlternateNames";
import {Application} from "./Application";
import {DisabledDocument} from "./DisabledDocument";
import {Education} from "./Education";
import {Phone} from "./Phone";
import {PreviousEmployer} from "./PreviousEmployer";
import {ServiceRecord} from "./ServiceRecord";


@Entity("Applicant",{schema:"dbo"})
export class Applicant {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"FirstName"
        })
    FirstName:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"LastName"
        })
    LastName:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:128,
        name:"MiddleName"
        })
    MiddleName:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:1,
        name:"MiddleInitial"
        })
    MiddleInitial:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:12,
        name:"SocialSecurity"
        })
    SocialSecurity:string | null;
        

    @Column("datetime2",{ 
        nullable:true,
        name:"Birthdate"
        })
    Birthdate:Date | null;
        

   
    @ManyToOne(type=>GenderTypes, GenderTypes=>GenderTypes.applicants,{ onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'Gender'})
    gender:GenderTypes | null;


   
    @ManyToOne(type=>EthnicityTypes, EthnicityTypes=>EthnicityTypes.applicants,{ onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'Ethnicity'})
    ethnicity:EthnicityTypes | null;


    @Column("bit",{ 
        nullable:true,
        default:"((1))",
        name:"Disabled"
        })
    Disabled:boolean | null;
        

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
        

   
    @OneToMany(type=>Address, Address=>Address.applicant,{ onDelete: 'CASCADE' })
    addresss:Address[];
    

   
    @OneToMany(type=>AlternateNames, AlternateNames=>AlternateNames.applicant,{ onDelete: 'CASCADE' })
    alternateNamess:AlternateNames[];
    

   
    @OneToMany(type=>Application, Application=>Application.applicant,{ onDelete: 'CASCADE' })
    applications:Application[];
    

   
    @OneToMany(type=>DisabledDocument, DisabledDocument=>DisabledDocument.applicant,{ onDelete: 'CASCADE' })
    disabledDocuments:DisabledDocument[];
    

   
    @OneToMany(type=>Education, Education=>Education.applicant)
    educations:Education[];
    

   
    @OneToMany(type=>Phone, Phone=>Phone.applicant,{ onDelete: 'CASCADE' })
    phones:Phone[];
    

   
    @OneToMany(type=>PreviousEmployer, PreviousEmployer=>PreviousEmployer.applicant,{ onDelete: 'CASCADE' })
    previousEmployers:PreviousEmployer[];
    

   
    @OneToMany(type=>ServiceRecord, ServiceRecord=>ServiceRecord.applicant)
    serviceRecords:ServiceRecord[];
    
}
