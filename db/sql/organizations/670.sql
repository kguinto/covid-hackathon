
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
      'University Hospitals Cleveland Medical Center',
      '11100 Euclid Ave
Cleveland, OH 44106',
      'Cleveland',
      'OH',
      'Main Entrance drop off with call to set up time (216-844-5583)',
      'Yes',
      '41.5062405',
      '-81.6053771'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospitals Cleveland Medical Center'
        AND o.latitude = '41.5062405'
        AND o.longitude = '-81.6053771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospitals Cleveland Medical Center'
        AND o.latitude = '41.5062405'
        AND o.longitude = '-81.6053771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospitals Cleveland Medical Center'
        AND o.latitude = '41.5062405'
        AND o.longitude = '-81.6053771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospitals Cleveland Medical Center'
        AND o.latitude = '41.5062405'
        AND o.longitude = '-81.6053771'));

COMMIT;
