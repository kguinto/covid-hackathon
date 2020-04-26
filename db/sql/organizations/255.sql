
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
      'St. Barnabas ',
      '412 Mt Arlington Blvd
Landing, NJ 07850',
      'Landing ',
      'NJ',
      'Mailing address ',
      'Yes',
      '40.9212422',
      '-74.6441832'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas '
        AND o.latitude = '40.9212422'
        AND o.longitude = '-74.6441832'));

COMMIT;
