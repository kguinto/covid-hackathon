
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
      'Saint Barnabas Medical Center',
      '95 Old Short Hills Rd
West Orange, NJ 07052',
      'West Orange ',
      'NJ',
      'Please leave at security desk ',
      'Yes',
      '40.7637469',
      '-74.3012795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7637469'
        AND o.longitude = '-74.3012795'));

COMMIT;
