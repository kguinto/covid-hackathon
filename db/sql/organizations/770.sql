
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
      'Pomona Valley Hospital Medical Center',
      '1798 N Garey Ave
Pomona, CA 91767',
      'Pomona',
      'CA',
      'Drop off at ED trauma/ambulance bay entrance,contact ED security to notify ED charge RN on duty | Main Hospital or 8am to 12pm at 360 West Vinton Avenue',
      'Yes',
      '34.0768626',
      '-117.7504875'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Valley Hospital Medical Center'
        AND o.latitude = '34.0768626'
        AND o.longitude = '-117.7504875'));

COMMIT;
