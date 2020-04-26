
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
      'Healthy Living at Home - San Diego',
      '9444 Waples St #450
San Diego, CA 92121',
      'San Diego',
      'CA',
      'office functional for critical service 9-5 M-F ',
      'Yes',
      '32.9020683',
      '-117.1850183'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We primarily work in assisted living and with 65+. Any PPE available to keep them safe PLEASE',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living at Home - San Diego'
        AND o.latitude = '32.9020683'
        AND o.longitude = '-117.1850183'));

COMMIT;
