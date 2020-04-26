
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
      'Alden Network',
      '1337 Basswood Road
Schaumburg, IL 60173',
      'Schaumburg ',
      'IL',
      'Back building delivery area Attn: Neide Mack ',
      'Yes',
      '42.0553411',
      '-88.0641934'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alden Network'
        AND o.latitude = '42.0553411'
        AND o.longitude = '-88.0641934'));

COMMIT;
