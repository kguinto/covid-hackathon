
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
      'St Anthony Health Center',
      '3700 Foss Rd
St Anthony, MN 55421',
      'Minneapolis',
      'MN',
      'Leave at front desk',
      'Yes',
      '45.0362743',
      '-93.2115946'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Anthony Health Center'
        AND o.latitude = '45.0362743'
        AND o.longitude = '-93.2115946'));

COMMIT;
