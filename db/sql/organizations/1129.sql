
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
      'Signature Healthcare',
      '25 Libby St
Brockton, MA 02302',
      'Brockton',
      'MA',
      'Attention: Janelle Mangiante',
      'Yes',
      '42.0874616',
      '-70.989651'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare'
        AND o.latitude = '42.0874616'
        AND o.longitude = '-70.989651'));

COMMIT;
