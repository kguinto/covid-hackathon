
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
      'VA Loma Linda Healthcare System',
      '11201 Benton St
Loma Linda, CA 92354',
      'Loma Linda',
      'CA',
      'Drop off at Emergency Room',
      'Yes',
      '34.0502196',
      '-117.2521291'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Loma Linda Healthcare System'
        AND o.latitude = '34.0502196'
        AND o.longitude = '-117.2521291'));

COMMIT;
