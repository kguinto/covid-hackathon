
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
      'Newark Beth Isreal Medical Center ',
      '201 Lyons Avenue,
Newark, NJ 07112',
      'Newark ',
      'NJ',
      'Can be dropped on at the hospital mailing room.',
      'Yes',
      '40.7097992',
      '-74.2125215'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newark Beth Isreal Medical Center '
        AND o.latitude = '40.7097992'
        AND o.longitude = '-74.2125215'));

COMMIT;
