
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
      'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations ',
      'Child Guidance Clinic
3401 Civic Center Blvd, Philadelphia, PA 19104',
      'Philadelphia',
      'PA',
      'There is a donation drop box in the Main Lobby of the Hospital (3401 Civic Center Boulevard, Philadelphia PA 19104). You are welcome to drop off your donations between normal business hours (9 a.m. to 4:30 p.m., Monday to Friday). 

You can also mail your donations to 

Children''s Hospital of Philadelphia
Attention: Robert Silverstein, PPE Donations 
3401 Civic Center Boulevard 
Philadelphia, PA 19104',
      'unopened sanitizer, unopened wipes, unopened cleaning products',
      '39.9487265',
      '-75.1943904'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Homemade masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations '
        AND o.latitude = '39.9487265'
        AND o.longitude = '-75.1943904'));

COMMIT;
