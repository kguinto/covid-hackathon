
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
      'Colorado River Medical Center (CRMC)',
      '1401 Bailey Ave
Needles, CA 92363',
      'Needles ',
      'CA',
      'Inside front hospital entrance ',
      'Yes',
      '34.8331484',
      '-114.6175395'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Colorado River Medical Center (CRMC)'
        AND o.latitude = '34.8331484'
        AND o.longitude = '-114.6175395'));

COMMIT;
