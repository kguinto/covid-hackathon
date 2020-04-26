
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
      'Lakewood Family Health Clinic',
      '1990 S Garrison St q
Lakewood, CO 80227',
      'Lakewood ',
      'CO',
      'Can place outside or inside of clinic.
M-T 8-2:3:30, 8-6 T/Fr (close early and work from home if no physical patients)',
      'Yes',
      '39.6808711',
      '-105.0996493'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Family Health Clinic'
        AND o.latitude = '39.6808711'
        AND o.longitude = '-105.0996493'));

COMMIT;
