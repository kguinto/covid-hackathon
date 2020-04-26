
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
      'Suburban Medical and Wellness Center',
      '800 Woodfield Rd #102
Schaumburg, IL 60173',
      'Schaumburg ',
      'IL',
      'Mailing address',
      'Yes',
      '42.0432013',
      '-88.0594581'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Medical and Wellness Center'
        AND o.latitude = '42.0432013'
        AND o.longitude = '-88.0594581'));

COMMIT;
