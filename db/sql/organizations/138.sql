
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
      'Sutter Medical Center Sacramento',
      '2825 Capitol Ave
Sacramento, CA 95816',
      'Sacramento',
      'CA',
      'Unused masks only. Mail to Emergency Department, C/o Noel Hastings. For dropoff at Emergency Department, ask for Dr. Hastings, Dr. Montoya, or charge nurse. | For questions, contact Joseph Daly, Head Nurse Admin for the ER at DalyJW@sutterhealth.org',
      'Unsure',
      '38.5709021',
      '-121.4694505'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento'
        AND o.latitude = '38.5709021'
        AND o.longitude = '-121.4694505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento'
        AND o.latitude = '38.5709021'
        AND o.longitude = '-121.4694505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Medical Center Sacramento'
        AND o.latitude = '38.5709021'
        AND o.longitude = '-121.4694505'));

COMMIT;
