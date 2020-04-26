
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
      'Transitions LifeCare William Dunlap Center for Caring/Hospice Home',
      '250 Hospice Cir
Raleigh, NC 27607',
      'Raleigh',
      'NC',
      'Pull up outside of our Administrative Building at 250 Hospice Circle, then call 919-828-0890, and someone will come out. If you are unable to reach someone, you may leave the donation beside the front door. Thank you for your donation!',
      'No',
      '35.8074456',
      '-78.7418081'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Transitions LifeCare William Dunlap Center for Caring/Hospice Home'
        AND o.latitude = '35.8074456'
        AND o.longitude = '-78.7418081'));

COMMIT;
