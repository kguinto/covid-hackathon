
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
      'Brightpointe at Rivershire',
      '604 Conroe Medical Dr
Conroe, TX 77304',
      'Conroe',
      'TX',
      'Please call to coordinate drop off in the parking lot- 936-494-6600',
      'Yes if unused!',
      '30.284443',
      '-95.4731118'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brightpointe at Rivershire'
        AND o.latitude = '30.284443'
        AND o.longitude = '-95.4731118'));

COMMIT;
