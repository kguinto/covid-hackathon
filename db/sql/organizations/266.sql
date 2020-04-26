
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
      'Baystate Medical Center',
      '754 Chestnut St
Springfield, MA 01199',
      'Springfield',
      'MA',
      'Mailing address ATTN: Dr. Ashwini Poola, General Surgery department',
      'Yes',
      '42.1204664',
      '-72.6054707'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baystate Medical Center'
        AND o.latitude = '42.1204664'
        AND o.longitude = '-72.6054707'));

COMMIT;
