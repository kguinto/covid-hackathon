
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
      'Mount Auburn Hospital',
      '330 Mt Auburn St
Cambridge, MA 02138',
      'Cambridge',
      'MA',
      'Call hospital for instructions',
      'No',
      '42.373977',
      '-71.1334327'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Auburn Hospital'
        AND o.latitude = '42.373977'
        AND o.longitude = '-71.1334327'));

COMMIT;
