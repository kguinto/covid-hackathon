
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
      'St Cloud hospital Centra Care ',
      '20400 Potassium St NW
Nowthen, MN 55303',
      'nowthen',
      'MN',
      '20400 potassium st nw',
      'Yes',
      '45.3402548',
      '-93.4201836'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Cloud hospital Centra Care '
        AND o.latitude = '45.3402548'
        AND o.longitude = '-93.4201836'));

COMMIT;
