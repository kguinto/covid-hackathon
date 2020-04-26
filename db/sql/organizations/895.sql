
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
      'Burgess Square Healthcare & Rehab Centre',
      '5801 S Cass Ave
Westmont, IL 60559',
      'Westmont',
      'IL',
      'Front lobby please',
      'Yes',
      '41.7822318',
      '-87.9729106'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burgess Square Healthcare & Rehab Centre'
        AND o.latitude = '41.7822318'
        AND o.longitude = '-87.9729106'));

COMMIT;
