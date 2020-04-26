
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
      '28 State Street
28 State St #2860, Boston, MA 02109',
      'Boston',
      'MA',
      'Attn: Katie Noyes ',
      'Yes',
      '42.3592454',
      '-71.0574839'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '42.3592454'
        AND o.longitude = '-71.0574839'));

COMMIT;
