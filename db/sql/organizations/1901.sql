
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
      'Jackson Hospital ',
      '1725 Pine St
Montgomery, AL 36106',
      'Montgomery ',
      'AL',
      'Attn: Dr Tan OR  Drop off at the mail room in South Building 2nd floor',
      'Yes',
      '32.3670831',
      '-86.2853492'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Hospital '
        AND o.latitude = '32.3670831'
        AND o.longitude = '-86.2853492'));

COMMIT;
