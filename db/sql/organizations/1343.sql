
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
      'Edward Hospital',
      '801 S Washington St
Naperville, IL 60540',
      'Naperville',
      'IL',
      'ICU: Accepting donations between 9 a.m. and 3 p.m. at our Loading Docks at Edward Hospital (Osler Dr. west of the South Parking Garage)

OR

Pull up to ER entrance and staff will receive it.  ',
      'No',
      '41.7606589',
      '-88.1534222'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hairnets',
    (SELECT id FROM organizations o
      WHERE o.name = 'Edward Hospital'
        AND o.latitude = '41.7606589'
        AND o.longitude = '-88.1534222'));

COMMIT;
