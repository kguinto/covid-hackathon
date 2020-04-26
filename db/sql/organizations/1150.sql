
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
      'Sturdy Memorial Hospital',
      '211 Park St
Attleboro, MA 02703',
      'Attleboro',
      'MA',
      'ATTN;: ddenneno@sturdymemoria.org',
      'Yes',
      '41.94183',
      '-71.2756732'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sturdy Memorial Hospital'
        AND o.latitude = '41.94183'
        AND o.longitude = '-71.2756732'));

COMMIT;
