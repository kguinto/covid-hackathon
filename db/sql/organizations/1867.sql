
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Eskenazi Health',
      '5128 W 79th St
Indianapolis, IN 46268',
      'Indianapolis',
      'IN',
      'Donations of unused and unopened PPE are welcomed and would greatly benefit our staff at this time. For obvious reasons we cannot have foot traffic into the main hospital. Thus we have set up a shipping location where these donations can be delivered. The location is Pillow Logistics, 5128 W. 79th Street, Indianapolis, IN 46268. Donation hours are 10 a.m. to 4 p.m. Please ring the doorbell in the back in between dock doors 2 and 3.  At that time a Pillow Logistics employee will direct you to where to leave the product.  We are limiting the number of people that come into our warehouse as well.  
',
      'No',
      '39.89719',
      '-86.2491302'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eskenazi Health'
        AND o.latitude = '39.89719'
        AND o.longitude = '-86.2491302'));

COMMIT;
