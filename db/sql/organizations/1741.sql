
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
      'Aurora Medical Center Summit',
      '36500 Aurora Dr
Oconomowoc, WI 53066',
      'Oconomowoc',
      'WI',
      '',
      'No',
      '43.0656747',
      '-88.4674576'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aurora Medical Center Summit'
        AND o.latitude = '43.0656747'
        AND o.longitude = '-88.4674576'));

COMMIT;
