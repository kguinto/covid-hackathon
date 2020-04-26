
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
      'Bon Secour Health System ',
      'Newport News
VA',
      'Newport News',
      'VA',
      'Email or call for instructions:
APRush@bshsi.org with subject line: DONATION

PHONE: 888-383-8000',
      'Unknown',
      '37.0870821',
      '-76.4730122'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('They are acceptimg homemade masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and include a video on how to make them on their site',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('but prefer N95 or surgical masks.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bon Secour Health System '
        AND o.latitude = '37.0870821'
        AND o.longitude = '-76.4730122'));

COMMIT;
