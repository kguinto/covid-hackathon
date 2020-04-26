
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
      'Coast Plaza Hospital',
      '13100 Studebaker Rd
Norwalk, CA 90650',
      'Norwalk',
      'CA',
      'Deliver to admitting lobby staff',
      'No',
      '33.9127726',
      '-118.0988257'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Antibacterial soap',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coast Plaza Hospital'
        AND o.latitude = '33.9127726'
        AND o.longitude = '-118.0988257'));

COMMIT;
