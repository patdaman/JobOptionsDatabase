import {Index,Entity, PrimaryColumn, Column, OneToOne, OneToMany, ManyToOne, ManyToMany, JoinColumn, JoinTable, RelationId} from "typeorm";
import {Application} from "./Application";


@Entity("References",{schema:"dbo"})
export class References {

    @Column("int",{ 
        generated:true,
        nullable:false,
        primary:true,
        name:"id"
        })
    id:number;
        

    @Column("int",{ 
        nullable:false,
        name:"ApplicantId"
        })
    ApplicantId:number;
        

   
    @ManyToOne(type=>Application, Application=>Application.referencess,{  })
    @JoinColumn({ name:'ApplicationId'})
    application:Application | null;


    @Column("varchar",{ 
        nullable:false,
        length:256,
        name:"Name"
        })
    Name:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:512,
        name:"Address"
        })
    Address:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:256,
        name:"Business"
        })
    Business:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"YearsAcquainted"
        })
    YearsAcquainted:string | null;
        

    @Column("datetime2",{ 
        nullable:false,
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
        
}
