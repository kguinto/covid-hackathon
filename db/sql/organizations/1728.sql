
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
      'St Johns Pleasant Valley Hospital',
      '3809 Antonio Ave
Camarillo, CA 93010',
      'camarillo',
      'CA',
      'ER entrance',
      'Yes',
      '34.2437668',
      '-119.0243506'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Johns Pleasant Valley Hospital'
        AND o.latitude = '34.2437668'
        AND o.longitude = '-119.0243506'));

COMMIT;
