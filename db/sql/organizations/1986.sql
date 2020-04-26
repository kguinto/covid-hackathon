
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
      'Sentara BelleHarbour ',
      '3920 Bridge Rd
Suffolk, VA 23435',
      'Suffolk',
      'VA',
      '3920 Bridge Road, Suffolk, VA 23435',
      'Yes',
      '36.8645947',
      '-76.4499069'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara BelleHarbour '
        AND o.latitude = '36.8645947'
        AND o.longitude = '-76.4499069'));

COMMIT;
