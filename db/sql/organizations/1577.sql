
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
      'Sparta Community Hospital ',
      '818 E Broadway St
Sparta, IL 62286',
      'Sparta',
      'IL',
      '',
      'Yes',
      '38.1239588',
      '-89.6915364'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sparta Community Hospital '
        AND o.latitude = '38.1239588'
        AND o.longitude = '-89.6915364'));

COMMIT;
