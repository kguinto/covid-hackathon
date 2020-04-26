
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
      'Torrance Memorial Medical Center',
      '3330 Lomita Blvd
Torrance, CA 90505',
      'Torrance',
      'CA',
      'In front of emergency room, drop off to nurse or security guard.',
      'Yes',
      '33.8118946',
      '-118.3435467'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Torrance Memorial Medical Center'
        AND o.latitude = '33.8118946'
        AND o.longitude = '-118.3435467'));

COMMIT;
