
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
      'Boston Healthcare for the Homeless Program',
      '780 Albany St
Boston, MA 02118',
      'Boston',
      'MA',
      'Attn: Meghan Krueger/April Donahue',
      'Yes',
      '42.3337186',
      '-71.0725726'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Healthcare for the Homeless Program'
        AND o.latitude = '42.3337186'
        AND o.longitude = '-71.0725726'));

COMMIT;
