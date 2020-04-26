
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
      'Grandview Medical center - Medical ICU',
      '405 W Grand Ave
Dayton, OH 45405',
      'Dayton',
      'OH',
      'Can mail or drop off.  Just list Medical ICU on package.',
      'Yes',
      '39.7698344',
      '-84.2026957'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grandview Medical center - Medical ICU'
        AND o.latitude = '39.7698344'
        AND o.longitude = '-84.2026957'));

COMMIT;
