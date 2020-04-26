
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
      'Clovis Community Medical Center',
      '7370 N Palm Ave #101
Fresno, CA 93711',
      'Clovis',
      'CA',
      'Drop off at reception ask for Courtney/Renee/Pam for Hospitalist Group',
      'No',
      '36.8437954',
      '-119.8069243'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clovis Community Medical Center'
        AND o.latitude = '36.8437954'
        AND o.longitude = '-119.8069243'));

COMMIT;
