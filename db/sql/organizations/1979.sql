
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
      'Boston Medical Center',
      '72 E Concord St
Boston, MA 02118',
      'Boston',
      'MA',
      'Please first fill out form: bmc.org/ppe | If unable to access building, call Public Safety: 617-358-4444 | Questions: BMCneedPPE@gmail.com | Large Donations can be shipped to: 750 Albany St, Boston, MA 02118',
      'Yes',
      '42.3364013',
      '-71.072408'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Medical Center'
        AND o.latitude = '42.3364013'
        AND o.longitude = '-71.072408'));

COMMIT;
