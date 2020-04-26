
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
      'One Medical',
      '590 Forest Ave
Palo Alto, CA 94301',
      'Palo Alto',
      'CA',
      'Curbside procedure',
      'Yes',
      '37.4477109',
      '-122.1554384'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.4477109'
        AND o.longitude = '-122.1554384'));

COMMIT;
