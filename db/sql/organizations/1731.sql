
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
      'Kaiser Permanente Stockton ',
      '7373 West Ln #135
Stockton, CA 95210',
      'Stockton ',
      'CA',
      'Pls hand to medical assistant and label box  - TO Critical care MDs ',
      'Yes',
      '38.0174883',
      '-121.2982713'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Stockton '
        AND o.latitude = '38.0174883'
        AND o.longitude = '-121.2982713'));

COMMIT;
