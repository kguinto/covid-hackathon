
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
      'Sante Skilled Nursing and Rehabilitation ',
      '8502 E Princess Dr Ste 200
Scottsdale, AZ 85255',
      'Scottsdale ',
      'AZ',
      'ATTN: Sante Operations drop off at information desk ',
      'Yes',
      '33.6455805',
      '-111.8970086'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Skilled Nursing and Rehabilitation '
        AND o.latitude = '33.6455805'
        AND o.longitude = '-111.8970086'));

COMMIT;
