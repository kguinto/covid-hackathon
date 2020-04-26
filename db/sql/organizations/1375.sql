
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
      'UCLA Medical Center - Santa Monica',
      '1250 16th St
Santa Monica, CA 90404',
      'Santa Monica',
      'CA',
      'covid19PPEsupport@mednet.ucla.edu',
      'unknown, contact email ',
      '34.0270998',
      '-118.4863064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bleach',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCLA Medical Center - Santa Monica'
        AND o.latitude = '34.0270998'
        AND o.longitude = '-118.4863064'));

COMMIT;
