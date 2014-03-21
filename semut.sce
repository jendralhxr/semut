// demand(1,1) dan distance(1,1) adalah depot
demand= [0, 22, 51, 25, 90, 47, 17, 61, 41, 57, 24, 7, 29, 83, 46, 45, 22, 43, 70, 54, 22, 20, 11, 48, 66, 72];
distance=[00.0, 18.8, 22.7, 20.2, 24.8, 23.7, 24.3, 24.9, 22.1, 24.1, 27.9, 25.1, 17.8, 15.5, 16.2, 16.6, 25.0, 23.4, 11.2, 28.4, 35.5, 17.4, 16.3, 14.3, 04.9, 26.9;
          18.8, 00.0, 08.2, 02.8, 02.6, 03.5, 03.2, 08.6, 05.6, 07.9, 09.2, 07.6, 10.4, 08.9, 14.5, 22.7, 09.8, 05.8, 12.4, 12.9, 22.9, 08.1, 14.5, 12.9, 13.1, 10.6;
          22.7, 08.2, 00.0, 03.7, 04.6, 03.6, 02.5, 05.6, 07.9, 08.6, 04.2, 03.1, 15.4, 6.00, 07.8, 04.8, 12.8, 01.4, 08.0, 08.5, 17.1, 10.8, 11.8, 30.7, 08.7, 06.1;
          20.2, 02.8, 03.7, 00.0, 02.3, 02.9, 02.7, 08.0, 11.7, 10.5, 05.4, 11.7, 14.5, 12.8, 13.0, 21.8, 17.0, 07.0, 11.5, 17.3, 20.2, 21.8, 17.1, 15.5, 15.7, 06.9;
          24.8, 02.6, 04.6, 02.3, 00.0, 03.1, 02.9, 05.2, 12.3, 08.2, 06.6, 08.2, 15.7, 11.7, 17.3, 12.0, 08.5, 08.6, 15.2, 15.7, 22.0, 10.9, 17.3, 15.7, 15.9, 07.1;
          23.7, 03.5, 03.6, 02.9, 03.1, 00.0, 01.1, 03.2, 04.1, 14.7, 05.7, 07.9, 13.1, 12.7, 12.9, 19.7, 07.9, 08.3, 14.1, 17.9, 19.9, 03.3, 17.5, 12.8, 14.4, 19.3;
          24.3, 03.2, 02.5, 02.7, 02.9, 01.1, 00.0, 03.8, 04.8, 15.3, 06.4, 06.8, 15.6, 13.5, 17.2, 20.4, 09.4, 08.5, 14.3, 18.6, 20.5, 05.6, 02.3, 14.9, 16.9, 24.7;
          24.9, 08.6, 05.6, 08.0, 05.2, 03.2, 03.8, 00.0, 01.1, 03.1, 06.8, 01.2, 14.1, 12.6, 18.0, 16.6, 04.3, 09.5, 13.0, 14.9, 16.6, 06.0, 18.0, 21.4, 17.7, 25.7;
          22.1, 05.6, 07.9, 11.7, 12.3, 04.1, 04.8, 01.1, 00.0, 02.9, 05.8, 16.4, 12.6, 14.1, 15.6, 15.9, 04.8, 08.9, 14.7, 13.5, 18.0, 09.2, 17.6, 24.1, 13.7, 25.5;
          24.1, 07.9, 08.6, 10.5, 08.2, 14.7, 15.3, 03.1, 02.9, 00.0, 18.0, 15.1, 23.7, 21.0, 29.1, 16.1, 15.7, 20.6, 20.4, 06.7, 29.1, 17.5, 29.1, 20.3, 22.6, 24.5;
          27.9, 09.2, 04.2, 05.4, 06.6, 05.7, 06.4, 06.8, 05.8, 18.0, 00.0, 06.9, 16.2, 17.6, 20.2, 26.9, 19.2, 11.0, 16.8, 20.6, 22.3, 06.7, 20.3, 16.9, 15.8, 27.6;
          25.1, 07.6, 03.1, 11.7, 08.2, 07.9, 06.8, 01.2, 16.4, 15.1, 06.9, 00.0, 14.2, 14.3, 18.2, 20.7, 04.4, 09.7, 15.5, 14.0, 15.9, 06.2, 18.2, 24.3, 14.5, 24.8;
          17.8, 10.4, 15.4, 14.5, 15.7, 13.1, 15.6, 14.1, 12.6, 23.7, 16.2, 14.2, 00.0, 07.9, 08.4, 28.9, 09.6, 05.0, 03.8, 13.8, 11.5, 10.8, 08.4, 05.5, 02.9, 10.3;
          15.5, 08.9, 06.0, 12.8, 11.7, 12.7, 13.5, 12.6, 14.1, 21.0, 17.6, 14.3, 07.9, 00.0, 18.1, 23.2, 19.3, 12.8, 08.2, 07.8, 05.4, 21.0, 18.1, 07.4, 17.3, 12.7;
          16.2, 14.5, 07.8, 13.0, 17.3, 12.9, 17.2, 18.0, 15.6, 29.1, 20.2, 18.2, 08.4, 18.1, 00.0, 33.1, 15.9, 16.4, 08.8, 23.2, 20.9, 17.4, 19.6, 10.7, 13.6, 10.7;
          16.6, 22.7, 04.8, 21.8, 12.0, 19.7, 20.4, 16.6, 15.9, 16.1, 26.9, 20.7, 28.9, 23.2, 33.1, 00.0, 22.6, 27.5, 32.5, 14.3, 19.1, 24.4, 36.0, 32.2, 32.4, 36.5;
          25.0, 09.8, 12.8, 17.0, 08.5, 07.9, 09.4, 04.3, 04.8, 15.7, 19.2, 04.4, 09.6, 19.3, 15.9, 22.6, 00.0, 08.5, 14.3, 18.6, 19.8, 02.3, 17.2, 15.6, 13.4, 24.7;
          23.4, 05.8, 01.4, 07.0, 08.6, 08.3, 08.5, 09.5, 08.9, 20.6, 11.0, 09.7, 05.0, 12.8, 16.4, 27.5, 08.5, 00.0, 07.6, 12.2, 13.1, 08.5, 17.5, 08.9, 06.6, 14.2;
          11.2, 12.4, 08.0, 11.5, 15.2, 14.1, 14.3, 13.0, 14.7, 20.4, 16.8, 15.5, 03.8, 08.2, 08.8, 32.5, 14.3, 07.6, 00.0, 14.1, 11.7, 16.2, 07.7, 02.4, 02.2, 07.1;
          28.4, 12.9, 08.5, 17.3, 15.7, 17.9, 18.6, 14.9, 13.5, 06.7, 20.6, 14.0, 13.8, 07.8, 23.2, 14.3, 18.6, 12.2, 14.1, 00.0, 04.8, 17.9, 23.2, 13.5, 15.7, 17.8;
          35.5, 22.9, 17.1, 20.2, 22.0, 19.9, 20.5, 16.6, 18.0, 29.1, 22.3, 15.9, 11.5, 05.4, 20.9, 19.1, 19.8, 13.1, 11.7, 04.8, 00.0, 24.3, 19.6, 10.7, 13.6, 09.8;
          17.4, 08.1, 10.8, 21.8, 10.9, 03.3, 05.6, 06.0, 09.2, 17.5, 06.7, 06.2, 10.8, 21.0, 17.4, 24.4, 02.3, 08.5, 16.2, 17.9, 24.3, 00.0, 17.4, 15.8, 15.0, 24.9;
          16.3, 14.5, 11.8, 17.1, 17.3, 17.5, 02.3, 18.0, 17.6, 29.1, 20.3, 18.2, 08.4, 18.1, 19.6, 36.0, 17.2, 17.5, 07.7, 23.2, 19.6, 17.4, 00.0, 08.9, 06.5, 10.3;
          14.3, 12.9, 30.7, 15.5, 15.7, 12.8, 14.9, 21.4, 24.1, 20.3, 16.9, 24.3, 05.5, 07.4, 10.7, 32.2, 15.6, 08.9, 02.4, 13.5, 10.7, 15.8, 08.9, 00.0, 04.2, 05.7;
          04.9, 13.1, 08.7, 15.7, 15.9, 14.4, 16.9, 17.7, 13.7, 22.6, 15.8, 14.5, 02.9, 17.3, 13.6, 32.4, 13.4, 06.6, 02.2, 15.7, 13.6, 14.0, 06.5, 04.2, 00.0, 08.1;
          26.9, 10.6, 06.1, 06.9, 07.1, 19.3, 24.7, 25.7, 25.5, 24.5, 27.6, 24.8, 10.3, 12.7, 10.7, 36.5, 24.7, 14.2, 07.1, 17.8, 09.8, 24.9, 10.3, 05.7, 08.1, 00.0];

// mu = visibility
for i= 1:26 do
    for j= 1:26 do
        if i==j then 
            mu(i,j)= 0;
        else 
            mu(i,j)= 1/distance(i,j);
        end
    end
end
mu(:,1)=0

customer_count= 25;
payload_max= 358;
vehicle_count= 3;
fuel_price= 6500;
fuel_ratio= 4.35;
unvisited= customer_count;
payload(1:vehicle_count)= payload_max;
pos_current(1:vehicle_count)= 1;
step(1:vehicle_count)= 1;
route_nn=0;
route_nn(1:vehicle_count,1)= 1;
visited(1:26)=0;
visited(1)=1;

// nearest neighbor on visibility
while unvisited > 0 do
    for id= 1:vehicle_count do
        pos_next= 0;
        [foo,pos_next]= max(mu(pos_current(id),:));
        // back to depot if not carrying enough payload
        if payload(id)<demand(pos_next) & pos_next>1 then
           // mprintf('refuel id=%d step=%d current=%d next=%d\n',id,step(id),(id),pos_next);
            step(id)= step(id)+1;
            route_nn(id,step(id))= 1;
            payload(id)= payload_max;
        end
        if pos_current(id)~=pos_next & pos_next>1 then
            step(id)= step(id)+1;
            visited(pos_next)= 1;
            unvisited= unvisited-1;
            payload(id)= payload(id)-demand(pos_next);
          //  mprintf('id=%d step=%d current=%d next=%d\n',id,step(id),pos_current(id),pos_next);
            route_nn(id,step(id))= pos_next;
            pos_current(id)= pos_next;
            mu(:,pos_next)= 0;
        end
    end
end

// back home
for id= 1:vehicle_count do
    if route_nn(id,step(id))~=1 then
        step(id)= step(id)+1;
       // mprintf('balik id=%d step=%d current=%d next=%d\n',id,step(id),(id),pos_next);
        route_nn(id,step(id))= 1;
    end
end

// cost and total distance traveled for each vehicle
cost(1:vehicle_count)= 0;
distance_total(1:vehicle_count)= 0;
for id= 1:vehicle_count do
    for i= 1:step(id)-1 do
        distance_total(id)= distance_total(id)+distance(route_nn(id,i),route_nn(id,i+1));
    end
    cost(id)= distance_total(id)/fuel_ratio*fuel_price;
    mprintf('nn id=%d dist=%f cost=%f\n',id,distance_total(id),cost(id));
end
distance_nn=sum(distance_total);
mprintf('nn total jarak, %f biaya Rp %f\n',distance_nn,distance_nn/fuel_ratio*fuel_price);
l_nn = distance_nn;

// ACO goes here henceforth
c_alpha= 0.2;
c_beta= 1.8; 
c_rho= 0.1;
c_q0= 0.6;
l_gb= %inf;
ant_max= 600;
tau=0;

// aco inits (pheromone, mu)
// phermomone init
tau_0= 1/(l_nn*25);
for i= 1:26 do
    for j= 1:26 do
        if distance(i,j)==0 then
            tau(i,j)=0;
        else
            tau(i,j)=1/(l_nn*25);
        end
    end
end

// mu = visibility
for i= 1:26 do
    for j= 1:26 do
        if i==j then 
            mu(i,j)= 0;
        else 
            mu(i,j)= 1/distance(i,j);
        end
    end
end

for ant= 1:ant_max do
    // inits
    unvisited= 25;
    visited(1:26)= 0;
    visited(1)= 1;
    trail(1:26,1:26)= 0
    l_temp= 0;
    payload= payload_max;
    
    // random initial step
    pos_next = floor((26-2+1)*rand()+2);
    while visited(pos_next)==1 do
        pos_next= floor((26-2+1)*rand()+2);
    end  
    tau(1,pos_next)= (1-c_rho)*tau(1,pos_next)+c_rho*tau_0;
    trail(1,pos_next)= 1;
    visited(pos_next)= 1;
    payload= payload - demand(pos_next);
    pos_current= pos_next;
    unvisited= unvisited-1;
    
    while unvisited do
        q=rand();
        s=0;
        s(1)=0;
        for i= 2:26 do
            if visited(i)==1 then
                s(i)=0;
            else
                s(i)=tau(pos_current,i)^c_alpha*mu(pos_current,i)^c_beta;
            end
        end
        s_sum= sum(s);
        if q<=c_q0 then
            // exploit
            [foo,pos_next]= max(s);
        else
            // explore
            r=rand();
            p= 0;
            p(1)= 0;
            p_cum= 0;
            i=1;
            while p_cum<=r do
                i= i+1;
                p(i)= s(i)/s_sum;
                p_cum= p_cum+p(i);
            end
            pos_next= i;
        end
        
        if payload<demand(pos_next) then
            tau(pos_current,1)= (1-c_rho)*tau(pos_current,1)+c_rho*tau_0;
            tau(1,pos_current)= tau(pos_current,1);
            trail(pos_current,1)= 1;
            trail(1,pos_current)= 1;
            l_temp= l_temp+distance(pos_current,1);
            payload= payload_max;
            pos_current= 1;
        end
        
        tau(pos_current,pos_next)= (1-c_rho)*tau(pos_current,pos_next)+c_rho*tau_0;
        tau(pos_current,pos_next)= tau(pos_next,pos_current);
        trail(pos_current,pos_next)= 1;
        trail(pos_next,pos_current)= 1;
        payload= payload-demand(pos_next);
        l_temp= l_temp+distance(pos_current,pos_next);
        pos_current= pos_next;
        if visited(pos_next)==0 then
            visited(pos_next)= 1;
            unvisited= unvisited-1;
        end
    end
    
    // go back home once all destinations visited
    tau(pos_current,1)= (1-c_rho)*tau(pos_current,1)+c_rho*tau_0;
    trail(pos_current,1)= 1;
    pos_current= 1;
    
    if l_temp<l_gb then
        l_gb= l_temp;
    end
       
    // global pheromone update
    for i= 1:26 do
        for j= 1:26 do
            tau(i,j)= (1-c_alpha)*tau(i,j);
            if trail(i,j)==1 then 
                tau(i,j)= tau(i,j)+(1/l_gb);
            end
        end
    end    
end

unvisited= customer_count;
payload(1:vehicle_count)= payload_max;
pos_current(1:vehicle_count)= 1;
step(1:vehicle_count)= 1;
route_aco=0;
route_aco(1:vehicle_count,1)= 1;
visited(1:26)=0;
visited(1)=1;

//mprintf("--0\n");
// nearest neighbor on pheromone
tau(:,1)= 0;
while unvisited > 0 do
    for id= 1:vehicle_count do
        pos_next=0;
        [foo,pos_next]= max(tau(pos_current(id),:));
        /// mprintf('endless8 id=%d step=%d current=%d next=%d payload=%d\n',id,step(id),pos_current(id),pos_next,payload(id));
        // back to depot if not carrying enough payload
        if payload(id)<demand(pos_next) & pos_next>1 then
           // mprintf('refuel id=%d step=%d current=%d next=%d\n',id,step(id),pos_current(id),pos_next);
            step(id)= step(id)+1;
            route_aco(id,step(id))=1;
            payload(id)= payload_max;
        end
        if pos_current(id)~=pos_next & pos_next>1 then
            step(id)= step(id)+1;
            visited(pos_next)= 1;
            unvisited= unvisited-1;
            payload(id)= payload(id)-demand(pos_next);
          //  mprintf('id=%d step=%d current=%d next=%d\n',id,step(id),pos_current(id),pos_next);
            route_aco(id,step(id))= pos_next;
            pos_current(id)= pos_next;
            tau(:,pos_next)= 0;
        end
    end
end

//mprintf("--a\n");
// back home
for id= 1:vehicle_count do
    if route_aco(id,step(id))~=1 then
        step(id)= step(id)+1;
       // mprintf('balik id=%d step=%d current=%d next=%d\n',id,step(id),(id),pos_next);
        route_aco(id,step(id))= 1;
    end
end

//mprintf("--b\n");
// cost and total distance traveled for each vehicle
cost(1:vehicle_count)= 0;
distance_total(1:vehicle_count)=0;
for id= 1:vehicle_count do
    for i= 1:step(id)-1 do
        distance_total(id)= distance_total(id)+distance(route_aco(id,i),route_aco(id,i+1));
    end
    cost(id)= distance_total(id)/fuel_ratio*fuel_price;
    mprintf('aco id=%d dist=%f cost=%f\n',id,distance_total(id),cost(id));
end
distance_aco=sum(distance_total);
mprintf('aco total jarak %f, biaya Rp %f\n',distance_aco,distance_aco/fuel_ratio*fuel_price);

// for author's own good, don't mind these two lines
route_aco(:,:)=route_aco(:,:)-1;
route_nn(:,:)=route_nn(:,:)-1;
