
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
      'Tri-City Health Center',
      '39500 Liberty Street
Fremont, CA 94538',
      'Fremont',
      'CA',
      'Attn: Phyllis Pei',
      'Yes',
      '37.5489569',
      '-121.9769483'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tri-City Health Center'
        AND o.latitude = '37.5489569'
        AND o.longitude = '-121.9769483'));

COMMIT;
