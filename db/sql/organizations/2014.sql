
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
      'Bougainvilleas Care',
      '201 Alta Vista Dr
South San Francisco, CA 94080',
      'South San Francisco',
      'CA',
      'Can ring doorbell and speak in intercom that package is being dropped off or email bougainvilleascarehome@gmail.com',
      'Yes',
      '37.6431057',
      '-122.4275691'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bougainvilleas Care'
        AND o.latitude = '37.6431057'
        AND o.longitude = '-122.4275691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bougainvilleas Care'
        AND o.latitude = '37.6431057'
        AND o.longitude = '-122.4275691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bougainvilleas Care'
        AND o.latitude = '37.6431057'
        AND o.longitude = '-122.4275691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bougainvilleas Care'
        AND o.latitude = '37.6431057'
        AND o.longitude = '-122.4275691'));

COMMIT;
