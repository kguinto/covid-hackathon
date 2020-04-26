
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
      'UCSF Fresno',
      '155 N Fresno St, Suite 307
Fresno, CA 93701',
      'Fresno',
      'CA',
      'At the security desk please',
      'Yes',
      '36.7436852',
      '-119.782252'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Fresno'
        AND o.latitude = '36.7436852'
        AND o.longitude = '-119.782252'));

COMMIT;
