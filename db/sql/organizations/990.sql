
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
      'Rapid Med Urgent Care',
      '8501 FM 407
Highland Village, TX 75077',
      'Double Oak',
      'TX',
      '',
      'Yes',
      '33.0715678',
      '-97.0884051'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0715678'
        AND o.longitude = '-97.0884051'));

COMMIT;
