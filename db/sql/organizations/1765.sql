
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
      'Hood Memorial Hospital ',
      '301 Walnut St
Amite City, LA 70422',
      'Amite',
      'LA',
      'Curbside ask for management for drop off. Mailing ATTN: Nursing Floor Manager/House Supervisor/Charge Nurse',
      'No',
      '30.7325907',
      '-90.5130721'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hood Memorial Hospital '
        AND o.latitude = '30.7325907'
        AND o.longitude = '-90.5130721'));

COMMIT;
